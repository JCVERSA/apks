.class public Lorg/proninyaroslav/libretorrent/core/InputFilterRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;
    }
.end annotation


# static fields
.field public static final c:Lorg/proninyaroslav/libretorrent/core/InputFilterRange;

.field public static final d:Lorg/proninyaroslav/libretorrent/core/InputFilterRange;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->c(I)Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;

    move-result-object v0

    const v2, 0xffff

    invoke-virtual {v0, v2}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->b(I)Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->a()Lorg/proninyaroslav/libretorrent/core/InputFilterRange;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange;->c:Lorg/proninyaroslav/libretorrent/core/InputFilterRange;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->c(I)Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->b(I)Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->a()Lorg/proninyaroslav/libretorrent/core/InputFilterRange;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange;->d:Lorg/proninyaroslav/libretorrent/core/InputFilterRange;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange;->a:Ljava/lang/Integer;

    .line 4
    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange;->b:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ly05;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange;->b:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x1

    const/4 p5, 0x0

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 p3, 0x2d

    if-ne p2, p3, :cond_0

    return-object p5

    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange;->a(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p5

    :catch_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method
