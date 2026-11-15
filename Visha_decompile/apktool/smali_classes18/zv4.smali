.class public abstract Lzv4;
.super Lefa;
.source "SourceFile"


# instance fields
.field public b:Lfreemarker/template/utility/DateUtil$b;

.field public c:Lfreemarker/template/utility/DateUtil$a;


# direct methods
.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    invoke-direct {p0, p1}, Lefa;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public c()Lfreemarker/template/utility/DateUtil$a;
    .locals 1

    iget-object v0, p0, Lzv4;->c:Lfreemarker/template/utility/DateUtil$a;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/template/utility/DateUtil$c;

    invoke-direct {v0}, Lfreemarker/template/utility/DateUtil$c;-><init>()V

    iput-object v0, p0, Lzv4;->c:Lfreemarker/template/utility/DateUtil$a;

    :cond_0
    return-object v0
.end method

.method public d()Lfreemarker/template/utility/DateUtil$b;
    .locals 1

    iget-object v0, p0, Lzv4;->b:Lfreemarker/template/utility/DateUtil$b;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/template/utility/DateUtil$d;

    invoke-direct {v0}, Lfreemarker/template/utility/DateUtil$d;-><init>()V

    iput-object v0, p0, Lzv4;->b:Lfreemarker/template/utility/DateUtil$b;

    :cond_0
    return-object v0
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
