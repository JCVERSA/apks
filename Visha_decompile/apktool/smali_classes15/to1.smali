.class public final synthetic Lto1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/CustomTabLayout$TabView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/CustomTabLayout$TabView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lto1;->b:Lcom/transsion/widgets/CustomTabLayout$TabView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lto1;->b:Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-static {p0}, Lcom/transsion/widgets/CustomTabLayout$TabView;->a(Lcom/transsion/widgets/CustomTabLayout$TabView;)V

    return-void
.end method
