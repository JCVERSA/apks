.class public Loe1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lrq3;

.field public final c:Lhc2;

.field public final d:Lbu9;

.field public final e:Lpo4;


# direct methods
.method public constructor <init>(Ljava/io/File;Lrq3;Lhc2;Lbu9;Lpo4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loe1;->a:Ljava/io/File;

    iput-object p2, p0, Loe1;->b:Lrq3;

    iput-object p3, p0, Loe1;->c:Lhc2;

    iput-object p4, p0, Loe1;->d:Lbu9;

    iput-object p5, p0, Loe1;->e:Lpo4;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Loe1;->b:Lrq3;

    invoke-interface {v0, p1}, Lrq3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Loe1;->a:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
