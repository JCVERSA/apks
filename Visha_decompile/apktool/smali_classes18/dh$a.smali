.class public Ldh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnga;
.implements Lbga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ldh;


# direct methods
.method public constructor <init>(Ldh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldh$a;->c:Ldh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ldh$a;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ldh;Lch;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ldh$a;-><init>(Ldh;)V

    return-void
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 0

    iget-object p0, p0, Ldh$a;->c:Ldh;

    invoke-virtual {p0, p1}, Ldh;->get(I)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Ldh$a;->b:I

    iget-object p0, p0, Ldh$a;->c:Ldh;

    invoke-static {p0}, Ldh;->p(Ldh;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lzfa;
    .locals 2

    iget v0, p0, Ldh$a;->b:I

    iget-object v1, p0, Ldh$a;->c:Ldh;

    invoke-static {v1}, Ldh;->p(Ldh;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Ldh$a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldh$a;->b:I

    invoke-virtual {p0, v0}, Ldh$a;->get(I)Lzfa;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Ldh$a;->c:Ldh;

    invoke-virtual {p0}, Ldh;->size()I

    move-result p0

    return p0
.end method
