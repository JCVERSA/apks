.class public final synthetic Lpy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lnb$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy1;->a:Lnb$a;

    iput-object p2, p0, Lpy1;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lpy1;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lpy1;->a:Lnb$a;

    iget-object v1, p0, Lpy1;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lpy1;->c:J

    check-cast p1, Lnb;

    invoke-static {v0, v1, v2, v3, p1}, Lwz1;->c0(Lnb$a;Ljava/lang/Object;JLnb;)V

    return-void
.end method
