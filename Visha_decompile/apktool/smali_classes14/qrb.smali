.class public final synthetic Lqrb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lrrb;

.field public final synthetic c:Lcom/transsion/videodownloader/model/VideoTaskItem;

.field public final synthetic d:Lex4;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lrrb;Lcom/transsion/videodownloader/model/VideoTaskItem;Lex4;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqrb;->b:Lrrb;

    iput-object p2, p0, Lqrb;->c:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iput-object p3, p0, Lqrb;->d:Lex4;

    iput-object p4, p0, Lqrb;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lqrb;->b:Lrrb;

    iget-object v1, p0, Lqrb;->c:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object v2, p0, Lqrb;->d:Lex4;

    iget-object p0, p0, Lqrb;->e:Ljava/util/Map;

    invoke-static {v0, v1, v2, p0}, Lrrb;->a(Lrrb;Lcom/transsion/videodownloader/model/VideoTaskItem;Lex4;Ljava/util/Map;)V

    return-void
.end method
