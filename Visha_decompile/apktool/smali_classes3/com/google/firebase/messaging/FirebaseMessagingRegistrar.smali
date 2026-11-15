.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-fcm"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lvk8;Lic1;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(Lvk8;Lic1;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lvk8;Lic1;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lzv3;

    invoke-interface {p1, v0}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lzv3;

    const-class v0, Lmw3;

    invoke-interface {p1, v0}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lubc;->a(Ljava/lang/Object;)V

    const-class v0, Lljb;

    invoke-interface {p1, v0}, Lic1;->e(Ljava/lang/Class;)Lpj8;

    move-result-object v3

    const-class v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    invoke-interface {p1, v0}, Lic1;->e(Ljava/lang/Class;)Lpj8;

    move-result-object v4

    const-class v0, Lkw3;

    invoke-interface {p1, v0}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkw3;

    invoke-interface {p1, p0}, Lic1;->f(Lvk8;)Lpj8;

    move-result-object v6

    const-class p0, Le2a;

    invoke-interface {p1, p0}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Le2a;

    const/4 v2, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lzv3;Lmw3;Lpj8;Lpj8;Lkw3;Lpj8;Le2a;)V

    return-object v8
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzb1;",
            ">;"
        }
    .end annotation

    const-class p0, Ly8b;

    const-class v0, Lb9b;

    invoke-static {p0, v0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object p0

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-static {v0}, Lzb1;->e(Ljava/lang/Class;)Lzb1$b;

    move-result-object v0

    const-string v1, "fire-fcm"

    invoke-virtual {v0, v1}, Lzb1$b;->h(Ljava/lang/String;)Lzb1$b;

    move-result-object v0

    const-class v2, Lzv3;

    invoke-static {v2}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    const-class v2, Lmw3;

    invoke-static {v2}, Lk82;->g(Ljava/lang/Class;)Lk82;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    const-class v2, Lljb;

    invoke-static {v2}, Lk82;->i(Ljava/lang/Class;)Lk82;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    const-class v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    invoke-static {v2}, Lk82;->i(Ljava/lang/Class;)Lk82;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    const-class v2, Lkw3;

    invoke-static {v2}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    invoke-static {p0}, Lk82;->h(Lvk8;)Lk82;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    const-class v2, Le2a;

    invoke-static {v2}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    new-instance v2, Lxw3;

    invoke-direct {v2, p0}, Lxw3;-><init>(Lvk8;)V

    invoke-virtual {v0, v2}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object p0

    invoke-virtual {p0}, Lzb1$b;->c()Lzb1$b;

    move-result-object p0

    invoke-virtual {p0}, Lzb1$b;->d()Lzb1;

    move-result-object p0

    const-string v0, "25.0.1"

    invoke-static {v1, v0}, Lqk5;->b(Ljava/lang/String;Ljava/lang/String;)Lzb1;

    move-result-object v0

    filled-new-array {p0, v0}, [Lzb1;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
