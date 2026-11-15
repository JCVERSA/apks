.class public La63$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La63;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:[I

.field public e:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lvpc;->h()[I

    move-result-object v0

    iput-object v0, p0, La63$b;->a:[I

    invoke-static {}, Lvpc;->h()[I

    move-result-object v0

    iput-object v0, p0, La63$b;->b:[I

    invoke-static {}, Lvpc;->h()[I

    move-result-object v0

    iput-object v0, p0, La63$b;->c:[I

    invoke-static {}, Lvpc;->h()[I

    move-result-object v0

    iput-object v0, p0, La63$b;->d:[I

    invoke-static {}, Lvpc;->h()[I

    move-result-object v0

    iput-object v0, p0, La63$b;->e:[I

    return-void
.end method

.method public synthetic constructor <init>(La63$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, La63$b;-><init>()V

    return-void
.end method
