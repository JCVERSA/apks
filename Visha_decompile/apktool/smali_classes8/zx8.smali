.class public Lzx8;
.super Lmy9;
.source "SourceFile"

# interfaces
.implements Lfp0;


# instance fields
.field public final b:Lqf0;

.field public final c:I

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:I


# direct methods
.method public constructor <init>(Lqf0;)V
    .locals 1

    invoke-direct {p0, p1}, Lmy9;-><init>(Lqf0;)V

    iput-object p1, p0, Lzx8;->b:Lqf0;

    invoke-interface {p1}, Lqf0;->a()I

    move-result p1

    iput p1, p0, Lzx8;->c:I

    new-array v0, p1, [B

    iput-object v0, p0, Lzx8;->d:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lzx8;->e:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lzx8;->f:[B

    const/4 p1, 0x0

    iput p1, p0, Lzx8;->g:I

    return-void
.end method

.method public static b(Lqf0;)Lfp0;
    .locals 1

    new-instance v0, Lzx8;

    invoke-direct {v0, p0}, Lzx8;-><init>(Lqf0;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Lzx8;->b:Lqf0;

    invoke-interface {p0}, Lqf0;->a()I

    move-result p0

    return p0
.end method
