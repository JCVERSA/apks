.class public final Lv00$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lv00$b;->a:J

    const-string p1, ""

    if-nez p3, :cond_0

    move-object p3, p1

    :cond_0
    iput-object p3, p0, Lv00$b;->b:Ljava/lang/String;

    if-nez p4, :cond_1

    move-object p4, p1

    :cond_1
    iput-object p4, p0, Lv00$b;->c:Ljava/lang/String;

    if-nez p5, :cond_2

    move-object p5, p1

    :cond_2
    iput-object p5, p0, Lv00$b;->d:Ljava/lang/String;

    if-nez p6, :cond_3

    move-object p6, p1

    :cond_3
    iput-object p6, p0, Lv00$b;->e:Ljava/lang/String;

    if-nez p7, :cond_4

    move-object p7, p1

    :cond_4
    iput-object p7, p0, Lv00$b;->f:Ljava/lang/String;

    return-void
.end method
