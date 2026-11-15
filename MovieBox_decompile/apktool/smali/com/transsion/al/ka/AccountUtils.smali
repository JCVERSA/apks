.class public Lcom/transsion/al/ka/AccountUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.community.oneroom.accounttype"

.field public static final AUTHORITIES:Ljava/lang/String; = "com.community.oneroom.account.sync"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static autoSyncStart(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "com.community.oneroom.account.sync"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "account"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/accounts/AccountManager;

    .line 10
    .line 11
    new-instance v2, Landroid/accounts/Account;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget v3, Lcom/transsion/al/R$string;->app_name:I

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v3, "com.community.oneroom.accounttype"

    .line 24
    .line 25
    invoke-direct {v2, p0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-virtual {v1, v2, p0, p0}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    invoke-static {v2, v0, p0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v0, p0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 43
    .line 44
    .line 45
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v1, 0x18

    .line 48
    .line 49
    if-lt p0, v1, :cond_0

    .line 50
    .line 51
    new-instance p0, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 57
    .line 58
    const-wide/16 v3, 0xf

    .line 59
    .line 60
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    invoke-static {v2, v0, p0, v3, v4}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .line 74
    .line 75
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 76
    .line 77
    const-wide/16 v3, 0x3c

    .line 78
    .line 79
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    invoke-static {v2, v0, p0, v3, v4}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "autoSyncStart exception:"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const-string v0, "KaManager"

    .line 109
    .line 110
    invoke-static {v0, p0}, Lcom/transsion/al/ka/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    :goto_1
    return-void
.end method
