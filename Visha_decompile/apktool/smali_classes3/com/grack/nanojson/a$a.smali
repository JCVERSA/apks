.class public final Lcom/grack/nanojson/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grack/nanojson/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/a$a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/grack/nanojson/a;

    new-instance v1, Lec5;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lec5;-><init>(Ljava/io/Reader;)V

    iget-boolean p1, p0, Lcom/grack/nanojson/a$a;->b:Z

    invoke-direct {v0, v1, p1}, Lcom/grack/nanojson/a;-><init>(Lec5;Z)V

    iget-object p0, p0, Lcom/grack/nanojson/a$a;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/a;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
