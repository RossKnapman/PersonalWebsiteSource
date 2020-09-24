---
layout: default
title: ESM 2020
comments: true
---


<h1 style="text-align:center; font-size: 44pt">Production of Magnetic Textures in Different Dimensions</h1>
<br/><br/>
Hi! I am a second-year PhD student with the [TWIST](https://www.twist.uni-mainz.de/) and [INSPIRE](https://www.sinova-group.physik.uni-mainz.de/) groups at the Johannes Gutenberg-Universität Mainz. On this page, I give a brief overview of my work so far. I decided to go with a blog as my "poster" as I wanted something that was more interactive than a regular poster, but more concise than a PowerPoint presentation. \\
\\
The aim of my project is to investigate numerically and analytically the shedding of topological magnetic textures from impurities in various dimensions. Throughout this work, the micromagnetic model is used.


# 1D Domain Wall Production
<br/>
[2016 work by Matthias Sitte et. al.](https://journals.aps.org/prb/abstract/10.1103/PhysRevB.94.064422) showed theoretically that domain walls can be periodically shed in a nanowire. 

{% include image.html url="/ESM/media/DW.png" description="Sitte et. al. 2016" %}

Analytically, the shedding frequency goes as $f \sim \sqrt{j - j_{\mathrm{c}}}$, where $j$ is the applied current and $j_{\mathrm{c}}$ is the critical current, below which shedding does not occur. \\
\\
Throughout this work, spin-transfer torque is used, and spin-orbit torque, as well as DMI, are neglected.


# 2D Skyrmion Production
<br/>
Skyrmions are whirlpool-like objects in ferromagnets. Their topology means that the field of spins constituting them cannot be continuously deformed into a collinear state. Here is an image of a (Bloch-type) skyrmion that I made recently:

{% include image.html url="/ESM/media/Skyrmion.png" %}

Similarly, works such as those by [Everschor-Sitte et. al.](https://iopscience.iop.org/article/10.1088/1367-2630/aa8569/meta) and [Stier et. al.](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.118.267203) investigate the shedding of skyrmion-antiskyrmion pairs through the application of a current to an impurity in a ferromagnet. In this work, a circular impurity in which the easy axis is along the $x$-direction is considered. Everywhere else in the system, the easy axis is along the $z$-direction.

{% include image.html url="/ESM/media/2dSchematic.svg" %}

Such a setup in a micromagnetic simulation results in the shedding of skyrmion, antiskyrmion pairs:

{% include youtube.html id="PBMKh6RPTGs" %}

We can obtain the skyrmion number in the white rectangle as a function of time, as shown here:

{% include youtube.html id="7AOwd5Wwl78" %}

Performing a Fourier analysis of this, we can obtain the shedding frequency as a function of the system parameters, such as the current:

{% include image.html url="/ESM/media/CurrentFreq.png" %}

This linear behaviour is in contrast to the results of Everschor-Sitte et. al., in which a relationship $f \sim \sqrt{j - j_{\mathrm{c}}}$ was found, analogously to the domain wall.
<br/><br/>

## Next Steps

- Analytically obtain the shedding frequency as a function of current, accounting for the size of the impurity (which previous work did not account for)
- Analytically obtain the critical current, accounting for the size of the impurity
- Investigate this mechanism in the helical state


# 3D Vortex/Hopfion Production
<br/>
The study of hopfions in magnetic systems has received an increase in attention over the past few years, but what is such an object? To undestand what a magnetic hopfion is, consider the following.
<br/><br/>
1. Consider a magnetic system where, at every point $\mathbf{r}$, the magnetisation is described by a unit vector $\mathbf{m}(\mathbf{r})$.
2. Choose an arbitrary direction, e.g. $\frac{1}{\sqrt{2}}(1, 1, 0)$.
3. Join together all of the points in the system for which the magnetisation points in this direction.
4. Pick another arbitrary direction, e.g. $(1, 0, 0)$ and do the same.
5. If these two strings each form a closed loop, the nubmer of times that they link each other known as the **Hopf index**. If this is nonzero, the texture constitutes a **hopfion**.

Below, we show an isosurface within a magnetic material of $m_x = -0.9$ (blue) and $m_x = 0.9$ (red), such that each contains the $m_x = -1$ and $m_x = 1$ strings respectively. This texture has a Hopf index of 1. Attempting to deform the system to the collinear state would result in the strings passing through one another, which would be impossible as it would imply that points exist at which $\mathbf{m}(\mathbf{r})$ has two values simultaneously. Therefore, like the skyrmion, the hopfion is said to be topologically protected.

{% include image.html url="/ESM/media/Link.png" %}

"Smoke rings" have been investigated in ferromagnetic systems by [Cooper](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.82.1554) in 1998 and [Sutcliffe](https://journals.aps.org/prb/abstract/10.1103/PhysRevB.76.184439) in 2007. The figure below by Sutcliffe shows a propagating magnetic vortex with a Hopf idnex of zero. The time evolution is from left to right, and the different colours represent two different directions of the magnetisation.

{% include image.html url="/ESM/media/Sutcliffe.png" description="Sutcliffe 2007" %}

He also investigated those with a nonzero Hopf index. For example, a propagating vortex with a Hopf index of 5 is shown in the figure below.

{% include image.html url="/ESM/media/SutcliffeHopf.png" description="Sutcliffe 2007" %}

So far, we have investigated the creation of vortices in bulk. As a first attempt, we consider a ring-shaped impurity, as shown below.

{% include image.html url="/ESM/media/3dSchematic.png" %}

Applying a current to this system, we obtain the shedding of vortex rings, as shown in the video below. The spins with a $z$-component $m_z > 0.9$ are hidden so that the structure of the objects shed can be easily seen.

{% include youtube.html id="l0jcp_G3NDE" %}

Some finer detail can be seen by plotting the isosurfaces $m_x = -0.7$ (blue) and $m_x = 0.7$ (red), shown below. The ring-shaped impurity is shown in black.

{% include image.html url="/ESM/media/3dResults.png" %}

The structures shed have a Hopf index of zero, making them topologically trivial. More work is needed to understand how to produce hopfions. Additionally, some analytical work is needed to obtain more qualitative properties of the system, such as the critical current, below which the dynamic shedding of textures does not occur.


# Overview/Outlook
<br/>
For the 2D system, it is possible to shed skyrmion-antiskyrmion pairs through the application of a current to an impurity. Further work we intend to do includes:
<br/>
- Analytical prediction of qualitative features of the shedding behaviour such as the critical current and dependence of shedding frequency on current, in a manner which accounts for the spatial extent of the impurity
- Investigation of the bahaviour of such a system in the helical state

For the 3D system, it is possible to shed magnetic textures in a similar manner. Further work we intend to do includes:
<br/>
- Investigation of setups which could produce topologically-nontrivial textures (e.g. Hopfions)
- Analytical prediction of features such as the critical value above which the current must be applied in order to obtain shedding


# Acknowledgements
<br/>
<div style="position: relative; padding-bottom: 25px">
<img src="/ESM/media/KES.jpg" style="position:relative" width="200">
<p style="font-size: 14pt">Dr. Karin Everschor-Sitte</p>
<p style="font-size: 14pt">Head of TWIST Group</p>
<p style="font-size: 14pt">Johannes Gutenberg-Universität Mainz</p>
</div>
[Karin](https://www.twist.uni-mainz.de/dr-karin-everschor-sitte/) is my supervisor, and the primary overseer of this project. She was the primary author of the [original paper](https://iopscience.iop.org/article/10.1088/1367-2630/aa8569/meta) on which my 2D shedding work is based, and continues to provide guidance on my projects.

<br/><br/>

<div style="position: relative; padding-bottom: 40px">
<img src="/ESM/media/DR.jpg" style="position:relative" width="200">
<p style="font-size: 14pt">Dr. Davi Rodrigues</p>
<p style="font-size: 14pt">TWIST Group</p>
<p style="font-size: 14pt">Johannes Gutenberg-Universität Mainz</p>
</div>
[Davi](https://www.twist.uni-mainz.de/davi-rodrigues/) is a postdoc within the TWIST group, and is my primary point of contact when I have questions or problems. He also worked on the [original paper](https://iopscience.iop.org/article/10.1088/1367-2630/aa8569/meta) on which my project is based, as well as the [prior work](https://journals.aps.org/prb/abstract/10.1103/PhysRevB.94.064422) on domain wall shedding.

<br/><br/>

<div style="position: relative; padding-bottom: 40px">
<img src="/ESM/media/JS.png" style="position:relative" width="200">
<p style="font-size: 14pt">Prof. Dr. Jairo Sinova</p>
<p style="font-size: 14pt">Head of INSPIRE</p>
<p style="font-size: 14pt">Johannes Gutenberg-Universität Mainz</p>
</div>
[Jairo](https://www.sinova-group.physik.uni-mainz.de/team/jairo-sinova/) is my secondary supervisor, and provides useful input on a regular basis.

<br/><br/>


<img src="/ESM/media/EmmyNoether.jpg" width="30%">
<img src="/ESM/media/SPP2137.png" width="30%">
<img src="/ESM/media/SPIN+X.jpeg" width="30%">