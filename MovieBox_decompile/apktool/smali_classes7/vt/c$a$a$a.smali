.class Lvt/c$a$a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/w$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvt/c$a$a;->b([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvt/c$a$a;


# direct methods
.method constructor <init>(Lvt/c$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvt/c$a$a$a;->a:Lvt/c$a$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvt/c$a$a$a;->b([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvt/c$a$a$a;->a:Lvt/c$a$a;

    .line 2
    .line 3
    iget-object v0, v0, Lvt/c$a$a;->a:Lvt/c$a;

    .line 4
    .line 5
    iget-boolean v1, v0, Lvt/c$a;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvt/c$a;->e:Lvt/c;

    .line 10
    .line 11
    iget-object v0, v0, Lvt/c;->j:Ljava/util/zip/CRC32;

    .line 12
    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lvt/c$a$a$a;->a:Lvt/c$a$a;

    .line 19
    .line 20
    iget-object p1, p1, Lvt/c$a$a;->a:Lvt/c$a;

    .line 21
    .line 22
    invoke-static {p1}, Lvt/c$a;->c(Lvt/c$a;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
