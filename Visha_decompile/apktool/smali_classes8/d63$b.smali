.class public Ld63$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld63;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[I

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lzpc;->g()[I

    move-result-object v0

    iput-object v0, p0, Ld63$b;->a:[I

    invoke-static {}, Lzpc;->g()[I

    move-result-object v0

    iput-object v0, p0, Ld63$b;->b:[I

    return-void
.end method

.method public synthetic constructor <init>(Ld63$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ld63$b;-><init>()V

    return-void
.end method
