.class public final synthetic Liib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8a$a;


# instance fields
.field public final synthetic a:Lkib;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lkib;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liib;->a:Lkib;

    iput-object p2, p0, Liib;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Liib;->a:Lkib;

    iget-object p0, p0, Liib;->b:Ljava/util/Map;

    invoke-static {v0, p0}, Lkib;->h(Lkib;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
