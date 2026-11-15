.class public Lt24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:C

.field public final c:D

.field public final d:D

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt24;->a:Ljava/util/List;

    iput-char p2, p0, Lt24;->b:C

    iput-wide p3, p0, Lt24;->c:D

    iput-wide p5, p0, Lt24;->d:D

    iput-object p7, p0, Lt24;->e:Ljava/lang/String;

    iput-object p8, p0, Lt24;->f:Ljava/lang/String;

    return-void
.end method

.method public static c(CLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    mul-int/lit8 p0, p0, 0x1f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lt24;->a:Ljava/util/List;

    return-object p0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lt24;->d:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-char v0, p0, Lt24;->b:C

    iget-object v1, p0, Lt24;->f:Ljava/lang/String;

    iget-object p0, p0, Lt24;->e:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lt24;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
