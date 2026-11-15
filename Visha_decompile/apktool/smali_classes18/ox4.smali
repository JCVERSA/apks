.class public Lox4;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lfreemarker/ext/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lfreemarker/ext/util/IdentityHashMap;)V
    .locals 0

    iput-object p1, p0, Lox4;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lox4;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-virtual {p0}, Lfreemarker/ext/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lox4;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-virtual {p0, p1}, Lfreemarker/ext/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lox4;->b:Lfreemarker/ext/util/IdentityHashMap;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfreemarker/ext/util/IdentityHashMap;->access$000(Lfreemarker/ext/util/IdentityHashMap;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lox4;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$100(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result v0

    iget-object v1, p0, Lox4;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Lfreemarker/ext/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lox4;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {p0}, Lfreemarker/ext/util/IdentityHashMap;->access$100(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result p0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lox4;->b:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {p0}, Lfreemarker/ext/util/IdentityHashMap;->access$100(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result p0

    return p0
.end method
