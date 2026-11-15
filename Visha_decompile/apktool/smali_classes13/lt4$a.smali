.class public final Llt4$a;
.super Llt4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final d:Llq0;


# direct methods
.method public constructor <init>(Let8;Lokhttp3/Call$Factory;Lsi1;Llq0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Llt4;-><init>(Let8;Lokhttp3/Call$Factory;Lsi1;)V

    iput-object p4, p0, Llt4$a;->d:Llq0;

    return-void
.end method


# virtual methods
.method public c(Ljq0;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Llt4$a;->d:Llq0;

    invoke-interface {p0, p1}, Llq0;->adapt(Ljq0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
