.class public Lc8a$a;
.super Lc8a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lux8;

.field public final c:Lxx8;

.field public final d:Lny9;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lc8a;-><init>(I)V

    new-instance v0, Lux8;

    invoke-direct {v0}, Lux8;-><init>()V

    iput-object v0, p0, Lc8a$a;->b:Lux8;

    new-instance v0, Lxx8;

    invoke-direct {v0}, Lxx8;-><init>()V

    iput-object v0, p0, Lc8a$a;->c:Lxx8;

    invoke-static {}, Lf;->k()Lis6;

    move-result-object v0

    invoke-static {v0}, Lzx8;->b(Lqf0;)Lfp0;

    move-result-object v0

    iput-object v0, p0, Lc8a$a;->d:Lny9;

    return-void
.end method
