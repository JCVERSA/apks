.class public Ll85;
.super Ldfa;
.source "SourceFile"


# instance fields
.field public final a:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Ljava/text/DateFormat;)V
    .locals 0

    invoke-direct {p0}, Ldfa;-><init>()V

    iput-object p1, p0, Ll85;->a:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public a(Lffa;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll85;->a:Ljava/text/DateFormat;

    invoke-interface {p1}, Lffa;->f()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ll85;->a:Ljava/text/DateFormat;

    instance-of v0, p0, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Ll85;->a:Ljava/text/DateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method
