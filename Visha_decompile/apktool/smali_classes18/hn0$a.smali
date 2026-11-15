.class public Lhn0$a;
.super Lan0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lfreemarker/core/j;Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lan0;-><init>(Lfreemarker/core/j;Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lan0;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Ln0a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
