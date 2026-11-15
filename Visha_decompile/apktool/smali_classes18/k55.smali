.class public final Lk55;
.super Lo95;
.source "SourceFile"


# instance fields
.field public final f:Le74;


# direct methods
.method public constructor <init>(Le74;)V
    .locals 0

    invoke-direct {p0}, Lo95;-><init>()V

    iput-object p1, p0, Lk55;->f:Le74;

    return-void
.end method


# virtual methods
.method public u()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lk55;->f:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
