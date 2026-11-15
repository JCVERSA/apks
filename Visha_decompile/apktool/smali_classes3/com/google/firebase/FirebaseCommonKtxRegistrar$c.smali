.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/FirebaseCommonKtxRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lic1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;->b(Lic1;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lic1;)Lkotlinx/coroutines/c;
    .locals 1

    const-class p0, Lrf0;

    const-class v0, Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object p0

    invoke-interface {p1, p0}, Lic1;->d(Lvk8;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lef3;->a(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0
.end method
