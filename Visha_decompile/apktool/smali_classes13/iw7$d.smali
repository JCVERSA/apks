.class public final Liw7$d;
.super Liw7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liw7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lsi1;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsi1;Z)V
    .locals 1

    invoke-direct {p0}, Liw7;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Liw7$d;->a:Ljava/lang/String;

    iput-object p2, p0, Liw7$d;->b:Lsi1;

    iput-boolean p3, p0, Liw7$d;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lat8;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liw7$d;->b:Lsi1;

    invoke-interface {v0, p2}, Lsi1;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Liw7$d;->a:Ljava/lang/String;

    iget-boolean p0, p0, Liw7$d;->c:Z

    invoke-virtual {p1, v0, p2, p0}, Lat8;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
