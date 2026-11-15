.class public Lqq4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhq4;


# direct methods
.method public constructor <init>(Lhq4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqq4;->a:Lhq4;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 10

    iget-object v0, p0, Lqq4;->a:Lhq4;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v9, 0x32

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x2710

    move-object v1, p1

    invoke-interface/range {v0 .. v9}, Lhq4;->a(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V

    return-void
.end method
