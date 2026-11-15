.class public La63$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La63;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:[I

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lvpc;->h()[I

    move-result-object v0

    iput-object v0, p0, La63$c;->a:[I

    invoke-static {}, Lvpc;->h()[I

    move-result-object v0

    iput-object v0, p0, La63$c;->b:[I

    return-void
.end method

.method public synthetic constructor <init>(La63$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, La63$c;-><init>()V

    return-void
.end method
