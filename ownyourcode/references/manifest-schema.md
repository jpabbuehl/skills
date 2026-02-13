# Manifest Schema (Tool-Agnostic)

## Location

- Canonical: `.ownyourcode/manifest.json`
- Legacy import source: `.claude/ownyourcode-manifest.json`

## Minimum Recommended Shape

```json
{
  "version": "2.3.0",
  "migrated_from": ".claude/ownyourcode-manifest.json",
  "profile": {
    "type": null,
    "configured_at": null,
    "settings": {}
  },
  "skills": [],
  "commands": []
}
```

## Migration Behavior

- If canonical exists: use it.
- Else if legacy exists: import legacy fields and write canonical.
- Else: initialize a new canonical manifest.
