# 北大未名自动登录脚本

未名 BBS 账号若干天不登录就会自动注销。。。因此通过一个 cron 脚本每天给自己续续命。

## Installation

```bash
sed -i 's/<USERNAME>/你的用户名/g' bdwm_login.sh
sed -i 's/<PASSWORD>/你的密码/g' bdwm_login.sh

(crontab -l 2>/dev/null; echo "0 9 * * * <path to bdwm_login.sh>") | crontab -
```

Voila!

> 未名 BBS 的 CSRF token 居然是“密码+用户名+密码”然后做MD5的值。。。echo的时候不要忘了加参数`-n`取消newline

