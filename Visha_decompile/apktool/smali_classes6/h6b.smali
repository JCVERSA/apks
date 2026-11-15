.class public final synthetic Lh6b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lt6b;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lt6b;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6b;->b:Lt6b;

    iput-object p2, p0, Lh6b;->c:Ljava/util/List;

    iput-boolean p3, p0, Lh6b;->d:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lh6b;->b:Lt6b;

    iget-object v1, p0, Lh6b;->c:Ljava/util/List;

    iget-boolean p0, p0, Lh6b;->d:Z

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lt6b;->a(Lt6b;Ljava/util/List;ZLjava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
