.class public Lr95$a;
.super Lr95;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr95;->j(Ljava/lang/String;)Lr95;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lr95;


# direct methods
.method public constructor <init>(Lr95;Lr95;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lr95$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lr95$a;->c:Lr95;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lr95;-><init>(Lr95;Lr95$a;)V

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lr95$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lr95$a;->c:Lr95;

    invoke-virtual {p0, p1}, Lr95;->i(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lr95;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "already specified useForNull"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
