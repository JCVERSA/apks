.class public final synthetic Llif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8i;


# instance fields
.field public final synthetic a:Lrif;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lrif;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llif;->a:Lrif;

    iput-object p2, p0, Llif;->b:Ljava/lang/String;

    iput-boolean p3, p0, Llif;->c:Z

    return-void
.end method


# virtual methods
.method public final zza()Lv9i;
    .locals 2

    iget-object v0, p0, Llif;->a:Lrif;

    iget-object v1, p0, Llif;->b:Ljava/lang/String;

    iget-boolean p0, p0, Llif;->c:Z

    invoke-static {v0, v1, p0}, Lrif;->Y(Lrif;Ljava/lang/String;Z)Lv9i;

    move-result-object p0

    return-object p0
.end method
