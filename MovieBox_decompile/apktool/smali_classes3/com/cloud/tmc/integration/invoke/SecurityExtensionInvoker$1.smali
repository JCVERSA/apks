.class Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;->onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$guardList:Ljava/util/List;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;

.field final synthetic val$t1:J


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$t1:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$guardList:Ljava/util/List;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->mutable()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/cloud/tmc/kernel/security/Permission;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$guardList:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/cloud/tmc/kernel/security/Guard;

    .line 42
    .line 43
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/security/Guard;->permit()Lcom/cloud/tmc/kernel/security/Permission;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "method "

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, " cost "

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    iget-wide v3, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$t1:J

    .line 90
    .line 91
    sub-long/2addr v1, v3

    .line 92
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v1, "Tmcintegration:ExtensionInvoker:Security"

    .line 100
    .line 101
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

    .line 105
    .line 106
    new-instance v1, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 107
    .line 108
    invoke-direct {v1, v0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;-><init>(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    .line 116
    .line 117
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceedSafe(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " cost "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iget-wide v3, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$t1:J

    .line 26
    .line 27
    sub-long/2addr v1, v3

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "Tmcintegration:ExtensionInvoker:Security"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceedSafe(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void
.end method
