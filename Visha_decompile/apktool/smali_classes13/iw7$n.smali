.class public final Liw7$n;
.super Liw7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liw7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# instance fields
.field public final a:Lsi1;

.field public final b:Z


# direct methods
.method public constructor <init>(Lsi1;Z)V
    .locals 0

    invoke-direct {p0}, Liw7;-><init>()V

    iput-object p1, p0, Liw7$n;->a:Lsi1;

    iput-boolean p2, p0, Liw7$n;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lat8;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liw7$n;->a:Lsi1;

    invoke-interface {v0, p2}, Lsi1;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    iget-boolean p0, p0, Liw7$n;->b:Z

    invoke-virtual {p1, p2, v0, p0}, Lat8;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
