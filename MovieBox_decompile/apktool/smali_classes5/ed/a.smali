.class public final synthetic Led/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lob/h;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lob/c;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lob/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Led/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Led/a;->b:Lob/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lob/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Led/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Led/a;->b:Lob/c;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Led/b;->b(Ljava/lang/String;Lob/c;Lob/e;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
