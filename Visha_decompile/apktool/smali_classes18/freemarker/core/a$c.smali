.class public final Lfreemarker/core/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:Lnga;

.field public final c:Lnga;


# direct methods
.method public constructor <init>(Lnga;Lnga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfreemarker/core/a$c;->b:Lnga;

    iput-object p2, p0, Lfreemarker/core/a$c;->c:Lnga;

    return-void
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/a$c;->b:Lnga;

    invoke-interface {v0}, Lnga;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/a$c;->b:Lnga;

    :goto_0
    invoke-interface {p0, p1}, Lnga;->get(I)Lzfa;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lfreemarker/core/a$c;->c:Lnga;

    sub-int/2addr p1, v0

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lfreemarker/core/a$c;->b:Lnga;

    invoke-interface {v0}, Lnga;->size()I

    move-result v0

    iget-object p0, p0, Lfreemarker/core/a$c;->c:Lnga;

    invoke-interface {p0}, Lnga;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
