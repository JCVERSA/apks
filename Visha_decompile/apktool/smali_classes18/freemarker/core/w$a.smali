.class public Lfreemarker/core/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lfreemarker/core/z0$a;

.field public final synthetic c:Lfreemarker/core/w;


# direct methods
.method public constructor <init>(Lfreemarker/core/w;Lfreemarker/core/z0$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/w$a;->c:Lfreemarker/core/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/w$a;->b:Lfreemarker/core/z0$a;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/w;Lfreemarker/core/z0$a;Lrl0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/w$a;-><init>(Lfreemarker/core/w;Lfreemarker/core/z0$a;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/w$a;->c:Lfreemarker/core/w;

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-virtual {v0, p1, v1, v2}, Lfreemarker/core/j;->a0(Ljava/util/List;II)V

    iget-object p0, p0, Lfreemarker/core/w$a;->b:Lfreemarker/core/z0$a;

    invoke-virtual {p0}, Lfreemarker/core/z0$a;->f()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p0, v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
