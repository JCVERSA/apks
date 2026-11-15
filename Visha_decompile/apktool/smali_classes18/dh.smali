.class public Ldh;
.super Lrd0;
.source "SourceFile"

# interfaces
.implements Lbfa;
.implements Lnga;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldh$a;
    }
.end annotation


# static fields
.field public static final i:Lfq6;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lch;

    invoke-direct {v0}, Lch;-><init>()V

    sput-object v0, Ldh;->i:Lfq6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lrd0;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Ldh;->h:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Object is not an array, it\'s "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic p(Ldh;)I
    .locals 0

    iget p0, p0, Ldh;->h:I

    return p0
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrd0;->o(Ljava/lang/Object;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Ldh;->h:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Lbga;
    .locals 2

    new-instance v0, Ldh$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldh$a;-><init>(Ldh;Lch;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Ldh;->h:I

    return p0
.end method
