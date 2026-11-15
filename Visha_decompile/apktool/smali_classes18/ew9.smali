.class public Lew9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpga;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lew9$a;
    }
.end annotation


# static fields
.field public static final c:Lew9;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lew9;

    invoke-direct {v0}, Lew9;-><init>()V

    sput-object v0, Lew9;->c:Lew9;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, v0}, Lew9;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lew9;->b:I

    return-void
.end method


# virtual methods
.method public h(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 2

    iget p0, p0, Lew9;->b:I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    const-string v1, "buffer_size"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhga;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lhga;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    const-string v1, "single_line"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/template/a;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lfreemarker/template/TemplateModelException;

    const-string p1, "Expecting boolean argument to single_line"

    invoke-direct {p0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lfreemarker/template/TemplateModelException;

    const-string p1, "Expecting numerical argument to buffer_size"

    invoke-direct {p0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p2, Lew9$a;

    invoke-direct {p2, p1, p0, v0}, Lew9$a;-><init>(Ljava/io/Writer;IZ)V

    return-object p2
.end method
