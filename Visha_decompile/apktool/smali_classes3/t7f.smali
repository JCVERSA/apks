.class public final synthetic Lt7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lv7f;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lv7f;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt7f;->a:Lv7f;

    iput-object p2, p0, Lt7f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    iget-object v0, p0, Lt7f;->a:Lv7f;

    iget-object p0, p0, Lt7f;->b:Ljava/lang/Object;

    check-cast p1, Lr6f;

    invoke-static {v0, p0, p1}, Lv7f;->a(Lv7f;Ljava/lang/Object;Lr6f;)Lim5;

    move-result-object p0

    return-object p0
.end method
