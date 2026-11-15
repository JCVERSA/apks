.class public final Ldt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lgc7;)Lzfa;
    .locals 0

    new-instance p0, Let1;

    check-cast p1, Ljava/util/Date;

    check-cast p2, Lfreemarker/ext/beans/b;

    invoke-direct {p0, p1, p2}, Let1;-><init>(Ljava/util/Date;Lfreemarker/ext/beans/b;)V

    return-object p0
.end method
