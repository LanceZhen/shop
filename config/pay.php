<?php

return [
    'alipay' => [
        'app_id'         => '2016101300677607',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtq9dzLwdSkK7Ho5DjTIGvj38Ias3jibpFjFtKMZ8pfXnmVOwdrib8QkakqHgC7QSlC9+wP5dW0B+fd5586yNyq0StNq1nKKzYRQMxhpDsNrtfbobwCPr+rl0jNDjdvPo0WSZmimwlB0NA6OJOi7TAFIcSS+8aoW0tN0QrOBc+C4snWZOYUwQ4pP0CLhrHCSAj04BUibNtxom0YpZTMEh73EsfEiIgXIIvTmqSNkZjAu/yW7fP0xGI7qFriKYajufJNRxEoVGh98zk6z4K5AxGsRUuZcaACHaUKdpqJNLzwdaHXeuZJ79vzoYDmdmYeHxR1tZ7goCN+TDpxtwGz3RNQIDAQAB',
        'private_key'    => 'MIIEpQIBAAKCAQEArVAQY31fezB5MJnIAlCoXTxk8mSp4J441TrRdIJwM4rJ1eHHNKqk9T/Wnb3UorzEDLp1Ur38rxEFKF1BAu+MscQda4cq0HYg6jvanEUHgogaHmVzJS7SyZqbh+TCZDIdITlwIzEtUZgxoyoBo+8X2O4BCriY1gfCjlxfShvQGTzoMHJwAJtpKJ2YsmBpIqgUZwKIItO4kgtaCDlGmgkPPdBqOOzrD6OiWJfrCRynWBNVWKOL1157obXHsVuAKhHkjt/jRZEyOEdc4LiAFQ4PdhDWu4C4HJoFj5cXpMCGU/UQkO/+8nHdLjr5o421KjCUeAUj0ugtjC5BuGcxPQJBqQIDAQABAoIBAQCmLjcIrpZ3EKujplDZp21IuTgyE8Ov1Qa5roRYKxpa0aFmq+7O2TEC2At5hSP2RvnVGpSUmgdH9hHz+jb0Ea3eZiWvjRPIfvxgnLOpU6c3yjkBHFWkOZl0JgMr8nVSjZrQ2LplhCnoKv6tbQHVptQ+9TeaiBZEY3xx9LCJ5tFK4DhqNd/3/dPTKfB5WB9L+vcQwAscx+chnT7MbhBvPziVhlR2r/LHco6zFnQlATYrqTViQFcwuacxEjQmg7uKxAxyxr4gT4jAgK26ohQ4URhe+wWyAMTlAYwnFw6n9/tmcNviAoywjPbRZkMzpVHvMng3fmkeLERzijZgv9ww9ugBAoGBAP9qdqYDzijgeSj/HCVLDQSZ/WAhMTNxnMe1Bwc6f4NDOGd3/uajN9nvPo46xkLUFoDrXxXoivbQwb9S7FKWKkas/rS7WDz4g1qv90e1s8WLt32H4rGi3nsqWZPVwKmtfZPLrMXbn3ADWXFwDW2PfzID8rXattXKh21nkj9K0cNhAoGBAK21iD7/MJrIO6BHlaQyOzM2OgCureDUrFykKhR+qa6SJR7Tjb0FDd0ub8m+HjnVoT7i9jRbJ4FiEvCj0gRr+5kYps7j20FhfcAM5+Cg505QmtYy+MMm9WJncYGYrSIK1Cp3o05Crq1QC9k/GewSN7nSMxU9KlM6JRxL6vTPiGtJAoGAPMExSdob3uNOTq8oHcLVbOPIPmaG0orS1To9Wr3SeQGzWAFWE7x9W4yqH6DhaiIS3EWgj5CKBZ2wiHcMGbT4h2k9CPaLTa17aUX0Fw2knnfWhLie9swcCcYQGrc8pd/LwC0xgrr0GOvjCbWyq/33Lol74UAOP5p2TlLVmdKNROECgYEAqWLVAqkRGj2adwaW0s/wjlWYZcXv48c+c+/Y4LdKeuIjtFWSZvkgtcdsVos/KiI44/upHRCuCyo5UdJNHua1Jmq1bhUeXjjUyItNKOt94g4Tjj+R96prqZM5Sag5W3K3xNl4sv2vG21swGEZw+tXz6k7CsDkHtgaC+ezqxkb65ECgYEAs5BXP6H8JExlYwd+oRmD93iZkEiMRfsT8qoKIPWuVGUJyVQJqSoKDbY/XQRRTg6CDCZOo9oWly58EEIg7CaLysiKnc07CDsTpb4AW3DmNKCjKdd9rz9g9u7RAzyKR7cnT1W0T9j7m5Xix4NCAj+qLs2eyXLSjbA1zhENyVYABrw=',
        'log'            => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],

    'wechat' => [
        'app_id'      => '',
        'mch_id'      => '',
        'key'         => '',
        'cert_client' => '',
        'cert_key'    => '',
        'log'         => [
            'file' => storage_path('logs/wechat_pay.log'),
        ],
    ],
];
