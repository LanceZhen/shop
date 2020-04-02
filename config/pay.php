<?php

return [
    'alipay' => [
        'app_id'         => '2016101300677607',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtq9dzLwdSkK7Ho5DjTIGvj38Ias3jibpFjFtKMZ8pfXnmVOwdrib8QkakqHgC7QSlC9+wP5dW0B+fd5586yNyq0StNq1nKKzYRQMxhpDsNrtfbobwCPr+rl0jNDjdvPo0WSZmimwlB0NA6OJOi7TAFIcSS+8aoW0tN0QrOBc+C4snWZOYUwQ4pP0CLhrHCSAj04BUibNtxom0YpZTMEh73EsfEiIgXIIvTmqSNkZjAu/yW7fP0xGI7qFriKYajufJNRxEoVGh98zk6z4K5AxGsRUuZcaACHaUKdpqJNLzwdaHXeuZJ79vzoYDmdmYeHxR1tZ7goCN+TDpxtwGz3RNQIDAQAB',
        'private_key'    => 'MIIEpgIBAAKCAQEApBMDaK8xNiVyKugBlCTohLKHpa5RpJ9mjle1BSg/FcCcsqq/tFynQ2U5etZCZIGuNAASRWAk7FIAv0muStRnlowEC0ibry9f6U5XhgmKmIR0qltzsG+GPes06ggaPtSK3nuMBt9dig8IMAzrqXmLU8YC0KAs1Vv1ZNgXdBjZvLobDbYoROegA6L1mM16d4GYW1uVddb1YZq+Ptu6Fl7oSFr7JSPbkQckkQTRyyPyqDgoZ3Ihvt5l1oCixjeX0bMp96mqbbkLly8yIhwQt39VMbRuU9avxwh1dGos5QDwg55nnsCVWo9baE39ZedoyGxlHc4mCwckNua00LuMRPHVkQIDAQABAoIBAQCISuMCCsWuXNzBl4f4L9CWqlbT4kIfpenjRCgy6IO+5glEwWINyQmIioV87I6qPq8esxB6YKtLQ7MrM2F894Q1IooZdW8dzxS1EUbTKQngN+dRvDYV0g6JUODbp29l0diph6eB7fodvO7oO1NnrHd4V3vvIZ8cfQ8Tfg29ewckJX8sqX4zqQ4/gsECzWBd/meUZd5HuBLvn3LqGb+0ykx4mtdAsr8uuOpPArluVERYEcMb9oBHgisvfkfaYPm2NG+e8Mm+OY0uyL0BwbgbICfgWhxIfmKXVRuH4m9fhXFtjbgPPo6IAlDheAVwUfyxEPmx1jjwndXg1GIuGGbo2emBAoGBANq6vEi4/ovq+kjsD3UB5hoifUQQ89MJcqiMOg5Uy8TnZjubcljKmogfYkNQ792+5vlG7ScG5WJPmjZ22n0K4XoDPrMs08GqpRVI1VgjxGo4/iH9uRRs+POUIzo8B1gtC5MzahV7UVLbF4gSoY2vJgo9tGh3syHr8Q+d9UzTIKcFAoGBAMAIJd/cYcCnYdWxADdwknnOt+7+O00xvGf20EXaIXvrz/6lhbjwq55mg3sZMZ+04nSLpuRh0BI6c1kyPgyitpLvL9MuXxWYBLvt729sE/yJkzcRtgawz/RnVyCybrMljzrCIeFjZTDmQOvwCR1VBoB7R+yRTW7BfNXUHKLUQ2IdAoGBALH/pvvzeEq7FaVEXavVuMDp8lDzDsld9e4N96zz+sOpoDu/28VAU5OVHq0zb5BgK60OuC27Ye6oYxIRlOqPcUCO5XaAc282hJOWqu/IY64h5UYaKYTizZHDqwtYEI4EUlgfTiRfL6Yi37p/lvMrZuSMpIUjbCad0JXp8NbtNbRVAoGBAIXTJ9HiW51PCLdLKsN4CBwrG7PKKLmbN5mcP3jukvcxVzo3UAGad39kIazf2d1ayZY+3Ie8QqzxXwGCKgvUOTgcyE97uXfrASGWp44W27baiWWPSjNPdRz2B5oZv1vJiQ+Byuqvwg1Z6VSDa1atsmJHh9AtUrEk1kKOF4bCNlNhAoGBAJfQVCXBfRX9yKpQGuAiH4Ez5E2b6QBuzTdsLoTapH+F6ZrjVfx3YBAy2THCyXVzsJBIJXttcT1RaYf3xcV1gh9IFG1N+fxoIkt6M/1vFYGlKelHXLLicVbPsmmewET81aTvB2nZH0ZmWEybA2feSHi4Gg+l7AjJskR7W5Lu3djP',
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
