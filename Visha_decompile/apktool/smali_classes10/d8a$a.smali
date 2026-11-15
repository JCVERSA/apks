.class public Ld8a$a;
.super Ld8a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lux8;

.field public final b:Lxx8;

.field public final c:Lny9;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld8a;-><init>()V

    new-instance v0, Lux8;

    invoke-direct {v0}, Lux8;-><init>()V

    iput-object v0, p0, Ld8a$a;->a:Lux8;

    new-instance v0, Lxx8;

    invoke-direct {v0}, Lxx8;-><init>()V

    iput-object v0, p0, Ld8a$a;->b:Lxx8;

    invoke-static {}, Lf;->k()Lis6;

    move-result-object v0

    invoke-static {v0}, Lzx8;->b(Lqf0;)Lfp0;

    move-result-object v0

    iput-object v0, p0, Ld8a$a;->c:Lny9;

    return-void
.end method
