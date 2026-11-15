.class public final La7j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:J

.field public final d:Lbpj;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lbpj;IJLl7j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La7j;->a:Ljava/util/List;

    iput-object p2, p0, La7j;->d:Lbpj;

    iput p3, p0, La7j;->b:I

    iput-wide p4, p0, La7j;->c:J

    return-void
.end method

.method public static bridge synthetic a(La7j;)I
    .locals 0

    iget p0, p0, La7j;->b:I

    return p0
.end method

.method public static bridge synthetic b(La7j;)J
    .locals 2

    iget-wide v0, p0, La7j;->c:J

    return-wide v0
.end method

.method public static bridge synthetic c(La7j;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, La7j;->a:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic d(La7j;)Lbpj;
    .locals 0

    iget-object p0, p0, La7j;->d:Lbpj;

    return-object p0
.end method
