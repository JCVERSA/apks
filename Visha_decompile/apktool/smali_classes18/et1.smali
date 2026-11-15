.class public Let1;
.super Lrd0;
.source "SourceFile"

# interfaces
.implements Lffa;


# static fields
.field public static final i:Lfq6;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldt1;

    invoke-direct {v0}, Ldt1;-><init>()V

    sput-object v0, Let1;->i:Lfq6;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lfreemarker/ext/beans/b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lrd0;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V

    instance-of v0, p1, Ljava/sql/Date;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Let1;->h:I

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/sql/Time;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Let1;->h:I

    goto :goto_0

    :cond_1
    instance-of p1, p1, Ljava/sql/Timestamp;

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Let1;->h:I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lfreemarker/ext/beans/b;->r()I

    move-result p1

    iput p1, p0, Let1;->h:I

    :goto_0
    return-void
.end method


# virtual methods
.method public f()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Let1;->h:I

    return p0
.end method
