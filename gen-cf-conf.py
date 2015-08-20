import requests

ranges = requests.get('https://ip-ranges.amazonaws.com/ip-ranges.json').json()
ranges = [
    r['ip_prefix'] for r in ranges['prefixes'] if r['service'] == 'CLOUDFRONT'
]

with open('/etc/nginx-cloudfront.conf', 'w') as conf:
    for ip_range in ranges:
        conf.write('set_real_ip_from {};\n'.format(ip_range))
