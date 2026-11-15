.class public Lxd5$a;
.super Lorg/python/core/PyObject;
.source "SourceFile"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lzfa;

.field public final synthetic c:Lxd5;


# direct methods
.method public constructor <init>(Lxd5;Lzfa;)V
    .locals 0

    iput-object p1, p0, Lxd5$a;->c:Lxd5;

    invoke-direct {p0}, Lorg/python/core/PyObject;-><init>()V

    iput-object p2, p0, Lxd5$a;->b:Lzfa;

    return-void
.end method


# virtual methods
.method public b()Lzfa;
    .locals 0

    iget-object p0, p0, Lxd5$a;->b:Lzfa;

    return-object p0
.end method
