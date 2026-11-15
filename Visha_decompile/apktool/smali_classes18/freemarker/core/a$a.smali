.class public Lfreemarker/core/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lofa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lofa;

.field public final c:Lofa;


# direct methods
.method public constructor <init>(Lofa;Lofa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfreemarker/core/a$a;->b:Lofa;

    iput-object p2, p0, Lfreemarker/core/a$a;->c:Lofa;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lzfa;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/a$a;->c:Lofa;

    invoke-interface {v0, p1}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/a$a;->b:Lofa;

    invoke-interface {p0, p1}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/a$a;->b:Lofa;

    invoke-interface {v0}, Lofa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/a$a;->c:Lofa;

    invoke-interface {p0}, Lofa;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
