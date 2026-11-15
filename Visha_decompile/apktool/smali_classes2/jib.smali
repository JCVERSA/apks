.class public final synthetic Ljib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8a$a;


# instance fields
.field public final synthetic a:Lkib;

.field public final synthetic b:La9b;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lkib;La9b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljib;->a:Lkib;

    iput-object p2, p0, Ljib;->b:La9b;

    iput-wide p3, p0, Ljib;->c:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ljib;->a:Lkib;

    iget-object v1, p0, Ljib;->b:La9b;

    iget-wide v2, p0, Ljib;->c:J

    invoke-static {v0, v1, v2, v3}, Lkib;->g(Lkib;La9b;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
