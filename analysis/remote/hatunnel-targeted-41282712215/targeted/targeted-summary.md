# HA Tunnel Plus targeted app-owned evidence

Static collection only. No target execution and no APK modification.

## Copy statistics

```json
[
  {
    "source": "/home/runner/work/_temp/hatunnel-analysis/jadx/sources/app/fast/ssh",
    "destination": "/home/runner/work/_temp/hatunnel-analysis/reports/targeted/jadx/app/fast/ssh",
    "files": 79,
    "bytes": 1200347,
    "skipped": []
  },
  {
    "source": "/home/runner/work/_temp/hatunnel-analysis/decoded/smali/app/fast/ssh",
    "destination": "/home/runner/work/_temp/hatunnel-analysis/reports/targeted/smali/smali/app/fast/ssh",
    "files": 231,
    "bytes": 1983164,
    "skipped": []
  }
]
```

## Key classes

| Key | Java present | Java lines | JADX markers | Smali files |
|---|---:|---:|---:|---|
| FastSSH | True | 142 | 0 | smali/smali/app/fast/ssh/FastSSH.smali |
| ProtectedFastSSH | True | 70 | 0 | smali/smali/app/fast/ssh/ProtectedFastSSH.smali |
| HomeFragment | True | 2118 | 4 | smali/smali/app/fast/ssh/HomeFragment.smali |
| MainActivity | True | 658 | 0 | smali/smali/app/fast/ssh/MainActivity.smali |
| BillingManager | True | 465 | 0 | smali/smali/app/fast/ssh/BillingManager.smali |
| Subscription | True | 36 | 0 | smali/smali/app/fast/ssh/Subscription.smali |
| PrefsSubscriptionStore | True | 60 | 0 | smali/smali/app/fast/ssh/PrefsSubscriptionStore.smali |
| HttpTokenExchange | True | 243 | 29 | smali/smali/app/fast/ssh/HttpTokenExchange.smali |
| TimerConf | True | 19 | 0 | smali/smali/app/fast/ssh/TimerConf.smali |
| AppOpenAdManager | True | 168 | 0 | smali/smali/app/fast/ssh/AppOpenAdManager.smali |
| RewardedAdSyncController | True | 282 | 0 | smali/smali/app/fast/ssh/RewardedAdSyncController.smali |
| VoucherActivity | True | 249 | 0 | smali/smali/app/fast/ssh/VoucherActivity.smali |
| dialog/AddTimeDialog | True | 267 | 0 | smali/smali/app/fast/ssh/dialog/AddTimeDialog.smali |
| dialog/RenewAccessDialog | True | 238 | 0 | smali/smali/app/fast/ssh/dialog/RenewAccessDialog.smali |
| dialog/PayloadGen | True | 274 | 0 | smali/smali/app/fast/ssh/dialog/PayloadGen.smali |
| core/VpnConnection | False |  |  | none |
| core/SSHTunnelService | False |  |  | none |
| core/VpnStatus | False |  |  | none |
| core/connection/SSHTunnelConnection | False |  |  | none |
| core/connection/LoadBalancer | False |  |  | none |

Targeted hit rows: 9496
Smali methods indexed: 986
