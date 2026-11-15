.class public abstract Lfreemarker/core/n$a;
.super Lhl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final k:Ljava/lang/Boolean;

.field public final l:I


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;I)V
    .locals 0

    invoke-direct {p0}, Lhl0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/n$a;->k:Ljava/lang/Boolean;

    iput p2, p0, Lfreemarker/core/n$a;->l:I

    return-void
.end method


# virtual methods
.method public j0(I)V
    .locals 4

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    new-instance v0, Lq0d;

    iget-object v1, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    const-string v2, " needs a value where it\'s known if it\'s a date (no time part), time, or date-time value:"

    const-string v3, "The value of the following has unknown date type, but ?"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lq0d;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p0}, Lq0d;->b(Lfreemarker/core/t0;)Lq0d;

    move-result-object p0

    const-string v0, "Use ?date, ?time, or ?datetime to tell FreeMarker the exact type."

    invoke-virtual {p0, v0}, Lq0d;->h(Ljava/lang/String;)Lq0d;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lq0d;)V

    throw p1
.end method

.method public k0(Ljava/util/Date;ILfreemarker/core/Environment;)Z
    .locals 1

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lfreemarker/core/n$a;->k:Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    instance-of p1, p1, Ljava/sql/Time;

    if-eqz p1, :cond_2

    invoke-static {p0}, Ld1d;->e(Lfreemarker/core/t1;)I

    move-result p0

    sget p1, Ld1d;->d:I

    if-ge p0, p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method
