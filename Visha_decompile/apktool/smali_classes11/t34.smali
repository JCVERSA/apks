.class public final synthetic Lt34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt34;->a:J

    iput-object p3, p0, Lt34;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lt34;->a:J

    iget-object p0, p0, Lt34;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lv34$a;

    invoke-static {v0, v1, p0, p1, p2}, Lv34;->b(JLjava/lang/String;Ljava/lang/String;Lv34$a;)Lv34$a;

    move-result-object p0

    return-object p0
.end method
