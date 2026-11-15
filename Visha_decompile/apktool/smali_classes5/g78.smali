.class public final synthetic Lg78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lk78;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lk78;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg78;->b:Lk78;

    iput-object p2, p0, Lg78;->c:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lg78;->d:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lg78;->b:Lk78;

    iget-object v1, p0, Lg78;->c:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lg78;->d:Z

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lk78;->s(Lk78;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    return-void
.end method
