.class public Lcom/hunantv/imgo/net/NetworkStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo;
    }
.end annotation


# static fields
.field private static a:Lcom/hunantv/imgo/net/NetworkStateManager;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hunantv/imgo/net/NetworkStateManager;

    invoke-direct {v0}, Lcom/hunantv/imgo/net/NetworkStateManager;-><init>()V

    sput-object v0, Lcom/hunantv/imgo/net/NetworkStateManager;->a:Lcom/hunantv/imgo/net/NetworkStateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/net/NetworkStateManager;
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/net/NetworkStateManager;->a:Lcom/hunantv/imgo/net/NetworkStateManager;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/NetworkStateManager;->b:Ljava/lang/String;

    return-object p0
.end method
