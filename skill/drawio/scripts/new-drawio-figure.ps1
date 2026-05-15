param(
    [Parameter(Mandatory = $true)]
    [string]$OutputPath,

    [string]$Title = 'Academic Diagram',
    [string]$PageName = 'Page-1',
    [int]$Width = 1920,
    [int]$Height = 1080
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$outputDir = Split-Path -Parent $OutputPath
if ($outputDir -and -not (Test-Path -LiteralPath $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir -Force | Out-Null
}

$diagramId = [guid]::NewGuid().ToString('N').Substring(0, 12)
$modified = (Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')

$xml = @"
<mxfile host="app.diagrams.net" modified="$modified" agent="Codex Drawio Skill" version="24.7.17" type="device">
  <diagram id="$diagramId" name="$PageName">
    <mxGraphModel dx="$Width" dy="$Height" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="$Width" pageHeight="$Height" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="title" value="$Title" style="text;html=1;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;whiteSpace=wrap;rounded=0;fontSize=24;fontStyle=1;fontFamily=Arial;fontColor=#1F2937;" vertex="1" parent="1">
          <mxGeometry x="48" y="24" width="680" height="40" as="geometry" />
        </mxCell>
        <mxCell id="note" value="Edit this starter file in diagrams.net. Deliver both the final .drawio source and a matching PNG. Default to orthogonal connectors with explicit side anchors and bend points instead of straight point-to-point links." style="rounded=1;whiteSpace=wrap;html=1;fillColor=#F8FAFC;strokeColor=#CBD5E1;fontSize=16;fontFamily=Arial;fontColor=#334155;spacing=12;" vertex="1" parent="1">
          <mxGeometry x="48" y="84" width="860" height="120" as="geometry" />
        </mxCell>
        <mxCell id="exampleSource" value="Source Module" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#DBEAFE;strokeColor=#2563EB;fontSize=26;fontFamily=Arial;fontColor=#1E3A8A;spacing=12;" vertex="1" parent="1">
          <mxGeometry x="980" y="300" width="260" height="110" as="geometry" />
        </mxCell>
        <mxCell id="exampleTarget" value="Target Module" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#DCFCE7;strokeColor=#16A34A;fontSize=26;fontFamily=Arial;fontColor=#166534;spacing=12;" vertex="1" parent="1">
          <mxGeometry x="1340" y="520" width="260" height="110" as="geometry" />
        </mxCell>
        <mxCell id="exampleEdge" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#475569;strokeWidth=2;endArrow=block;endFill=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="exampleSource" target="exampleTarget">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1290" y="355" />
              <mxPoint x="1290" y="520" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="exampleCaption" value="Starter connector example: orthogonal path with fixed anchors and explicit bend points." style="text;html=1;strokeColor=none;fillColor=none;align=left;verticalAlign=middle;whiteSpace=wrap;rounded=0;fontSize=16;fontFamily=Arial;fontColor=#475569;" vertex="1" parent="1">
          <mxGeometry x="980" y="660" width="620" height="30" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
"@

[System.IO.File]::WriteAllText($OutputPath, $xml, (New-Object System.Text.UTF8Encoding($false)))
Write-Output $OutputPath
