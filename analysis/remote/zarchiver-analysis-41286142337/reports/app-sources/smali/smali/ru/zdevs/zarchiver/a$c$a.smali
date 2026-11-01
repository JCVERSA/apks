.class public final Lru/zdevs/zarchiver/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/a$c;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/a$c;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/a$c;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/a$c$a;->a:Lru/zdevs/zarchiver/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lg0/i;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/a$c$a;->a:Lru/zdevs/zarchiver/a$c;

    .line 2
    .line 3
    iget-object p1, p1, Lru/zdevs/zarchiver/a$c;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lru/zdevs/zarchiver/ZArchiver;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ZArchiver;->finish()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
