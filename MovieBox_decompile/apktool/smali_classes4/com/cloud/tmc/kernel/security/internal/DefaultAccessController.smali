.class public Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/security/AccessController;


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:Permission"


# instance fields
.field private accessControlManagement:Lcom/cloud/tmc/kernel/security/AccessControlManagement;


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

.method private apply(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)V
    .locals 1
    .param p3    # Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/security/Accessor;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;",
            "Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p3}, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController$1;-><init>(Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/kernel/security/Accessor;->inquiry(Ljava/util/List;Lcom/cloud/tmc/kernel/security/Accessor$InquiryCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private checkGroup(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Group;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/security/AccessControlException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/security/Group;->permissions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/cloud/tmc/kernel/security/Permission;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return p1
.end method


# virtual methods
.method public check(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)Z
    .locals 0
    .param p3    # Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/security/Accessor;",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Guard;",
            ">;",
            "Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/security/AccessControlException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public setAccessControlManagement(Lcom/cloud/tmc/kernel/security/AccessControlManagement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;->accessControlManagement:Lcom/cloud/tmc/kernel/security/AccessControlManagement;

    .line 2
    .line 3
    return-void
.end method
