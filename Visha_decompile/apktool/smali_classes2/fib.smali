.class public final synthetic Lfib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8a$a;


# instance fields
.field public final synthetic a:Lkib;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:La9b;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lkib;Ljava/lang/Iterable;La9b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfib;->a:Lkib;

    iput-object p2, p0, Lfib;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Lfib;->c:La9b;

    iput-wide p4, p0, Lfib;->d:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lfib;->a:Lkib;

    iget-object v1, p0, Lfib;->b:Ljava/lang/Iterable;

    iget-object v2, p0, Lfib;->c:La9b;

    iget-wide v3, p0, Lfib;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lkib;->b(Lkib;Ljava/lang/Iterable;La9b;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
