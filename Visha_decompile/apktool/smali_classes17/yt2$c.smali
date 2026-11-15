.class public final Lyt2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyt2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lzl2;

.field public b:Z


# direct methods
.method public constructor <init>(Lzl2;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyt2$c;->a:Lzl2;

    return-void
.end method


# virtual methods
.method public a()Lzl2;
    .locals 1

    iget-boolean v0, p0, Lyt2$c;->b:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyt2$c;->b:Z

    invoke-virtual {p0}, Lyt2$c;->getItem()Lzl2;

    move-result-object p0

    return-object p0
.end method

.method public getItem()Lzl2;
    .locals 0

    iget-object p0, p0, Lyt2$c;->a:Lzl2;

    return-object p0
.end method
