.class Lcom/transsion/push/config/PushRepository$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/config/PushRepository;->d(Lcom/transsion/push/IClientIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/config/PushRepository;

.field final synthetic val$listener:Lcom/transsion/push/IClientIdListener;


# direct methods
.method constructor <init>(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/config/PushRepository$4;->val$listener:Lcom/transsion/push/IClientIdListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/push/config/PushRepository;->a(Lcom/transsion/push/config/PushRepository;)Lcom/transsion/push/config/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/push/config/a;->f()Lcom/transsion/push/bean/ConfigInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$4;->val$listener:Lcom/transsion/push/IClientIdListener;

    .line 14
    .line 15
    const-string v1, "get client id fail"

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/transsion/push/IClientIdListener;->onFail(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "get config response data: "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/transsion/push/bean/ConfigInfo;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    .line 55
    .line 56
    iget-boolean v2, v0, Lcom/transsion/push/bean/ConfigInfo;->nextWithApp:Z

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "push_is_next_with_app"

    .line 63
    .line 64
    invoke-virtual {v1, v3, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    .line 68
    .line 69
    iget-boolean v2, v0, Lcom/transsion/push/bean/ConfigInfo;->nextWithDetail:Z

    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v3, "push_is_report_detail"

    .line 76
    .line 77
    invoke-virtual {v1, v3, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    .line 81
    .line 82
    const-string v2, "push_client_id"

    .line 83
    .line 84
    iget-object v3, v0, Lcom/transsion/push/bean/ConfigInfo;->clientId:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->destroyAppIds:[Ljava/lang/String;

    .line 90
    .line 91
    iget v2, v0, Lcom/transsion/push/bean/ConfigInfo;->syncInfoInterval:I

    .line 92
    .line 93
    invoke-static {v1, v2}, Lcom/transsion/push/utils/k0;->f([Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->configRefresh:Z

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->config:Lcom/transsion/push/bean/ConfigInfo$Config;

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    iget v2, v1, Lcom/transsion/push/bean/ConfigInfo$Config;->version:I

    .line 105
    .line 106
    if-lez v2, :cond_2

    .line 107
    .line 108
    iget-object v2, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    .line 109
    .line 110
    invoke-virtual {v2, v1}, Lcom/transsion/push/config/PushRepository;->saveConfig(Lcom/transsion/push/bean/ConfigInfo$Config;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    .line 114
    .line 115
    iget-object v2, v0, Lcom/transsion/push/bean/ConfigInfo;->config:Lcom/transsion/push/bean/ConfigInfo$Config;

    .line 116
    .line 117
    iget v2, v2, Lcom/transsion/push/bean/ConfigInfo$Config;->destroy:I

    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const-string v3, "push_self_destroying"

    .line 124
    .line 125
    invoke-virtual {v1, v3, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->whitelistRefresh:Z

    .line 129
    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->whitelist:Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    .line 133
    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    iget v2, v1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->version:I

    .line 137
    .line 138
    if-lez v2, :cond_3

    .line 139
    .line 140
    iget-object v2, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Lcom/transsion/push/config/PushRepository;->saveWhiteList(Lcom/transsion/push/bean/ConfigInfo$Whitelist;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$4;->val$listener:Lcom/transsion/push/IClientIdListener;

    .line 146
    .line 147
    if-eqz v1, :cond_4

    .line 148
    .line 149
    iget-object v0, v0, Lcom/transsion/push/bean/ConfigInfo;->clientId:Ljava/lang/String;

    .line 150
    .line 151
    invoke-interface {v1, v0}, Lcom/transsion/push/IClientIdListener;->onSuccess(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    return-void
.end method
